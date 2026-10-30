param(
    [string]$Target = (Get-Location).Path
)
$ErrorActionPreference = 'Stop'
$SourceDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$TargetDir = [System.IO.Path]::GetFullPath($Target)
if (-not (Test-Path -LiteralPath $TargetDir -PathType Container)) {
    throw "Target directory not found: $TargetDir"
}
if ($SourceDir.TrimEnd('\','/') -eq $TargetDir.TrimEnd('\','/')) {
    throw 'Already inside MyHarness; run from the actual work directory instead.'
}
foreach ($relative in @('AGENTS.md', 'SPEC_GUIDE.md', '.agents/skills/project-walkthrough/SKILL.md')) {
    $source = Join-Path $SourceDir $relative
    $dest = Join-Path $TargetDir $relative
    if (Test-Path -LiteralPath $dest) {
        Write-Host "SKIP existing: $relative (review and merge manually)"
        continue
    }
    $parent = Split-Path -Parent $dest
    New-Item -ItemType Directory -Force -Path $parent | Out-Null
    Copy-Item -LiteralPath $source -Destination $dest -ErrorAction Stop
    Write-Host "INSTALLED: $relative"
}
Write-Host "`nStart a new Codex session in: $TargetDir"
