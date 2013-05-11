.class Lcom/htc/opensense/social/AbstractSocialPlugin$Transport$6;
.super Ljava/lang/Object;
.source "AbstractSocialPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;->getDataSources(Lcom/htc/opensense/social/ISocialPluginResponse;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;

.field final synthetic val$features:[Ljava/lang/String;

.field final synthetic val$response:Lcom/htc/opensense/social/ISocialPluginResponse;


# direct methods
.method constructor <init>(Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;Lcom/htc/opensense/social/ISocialPluginResponse;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport$6;->this$1:Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;

    iput-object p2, p0, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport$6;->val$response:Lcom/htc/opensense/social/ISocialPluginResponse;

    iput-object p3, p0, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport$6;->val$features:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 185
    iget-object v3, p0, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport$6;->this$1:Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;

    iget-object v3, v3, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialPlugin;

    new-instance v4, Lcom/htc/opensense/social/SocialPluginResponse;

    iget-object v5, p0, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport$6;->val$response:Lcom/htc/opensense/social/ISocialPluginResponse;

    invoke-direct {v4, v5}, Lcom/htc/opensense/social/SocialPluginResponse;-><init>(Lcom/htc/opensense/social/ISocialPluginResponse;)V

    iget-object v5, p0, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport$6;->val$features:[Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/htc/opensense/social/AbstractSocialPlugin;->getDataSources(Lcom/htc/opensense/social/SocialPluginResponse;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 187
    .local v2, result:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport$6;->val$response:Lcom/htc/opensense/social/ISocialPluginResponse;

    invoke-interface {v3, v2}, Lcom/htc/opensense/social/ISocialPluginResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Landroid/os/Bundle;

    .end local v2           #result:Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 193
    .restart local v2       #result:Landroid/os/Bundle;
    :try_start_1
    iget-object v3, p0, Lcom/htc/opensense/social/AbstractSocialPlugin$Transport$6;->val$response:Lcom/htc/opensense/social/ISocialPluginResponse;

    invoke-interface {v3, v2}, Lcom/htc/opensense/social/ISocialPluginResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 194
    :catch_1
    move-exception v1

    .line 195
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
