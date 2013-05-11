.class public Lcom/htc/wrap/com/android/internal/net/HtcWrapDomainNameValidator;
.super Ljava/lang/Object;
.source "HtcWrapDomainNameValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static match(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 2
    .parameter "certificate"
    .parameter "thisDomain"

    .prologue
    .line 19
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcWrapDomainNameValidator"

    const-string v1, "this class had been deprecated, please use HostnameVerifier."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
