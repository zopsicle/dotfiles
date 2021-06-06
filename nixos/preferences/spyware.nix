{ ... }:

{
    # Needed for VS Code and Steam.
    # Should switch to an allowlist approach.
    nixpkgs.config.allowUnfree = true;

    # Kerbal Space Program unnecessarily contacts these hosts.
    # Routing these to 0.0.0.0 stops KSP from leaking personal information.
    networking.extraHosts = ''
        0.0.0.0 api.uca.cloud.unity3d.com
        0.0.0.0 cdp.cloud.unity3d.com
        0.0.0.0 config.uca.cloud.unity3d.com
        0.0.0.0 data-optout-service.uca.cloud.unity3d.com
        0.0.0.0 perf-events.cloud.unity3d.com
        0.0.0.0 public.cloud.unity3d.com
        0.0.0.0 stats.unity3d.com
    '';
}
