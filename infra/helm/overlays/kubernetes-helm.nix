(final: prev: {
  kubernetes-helm = with prev; (wrapHelm kubernetes-helm {
    plugins = with kubernetes-helmPlugins; [
      helm-diff
      helm-git
      helm-s3
      helm-secrets
    ];
  });
})
