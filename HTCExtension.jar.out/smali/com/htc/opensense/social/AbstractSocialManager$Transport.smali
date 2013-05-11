.class Lcom/htc/opensense/social/AbstractSocialManager$Transport;
.super Lcom/htc/opensense/social/ISocialManager$Stub;
.source "AbstractSocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/social/AbstractSocialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Transport"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/social/AbstractSocialManager;


# direct methods
.method private constructor <init>(Lcom/htc/opensense/social/AbstractSocialManager;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-direct {p0}, Lcom/htc/opensense/social/ISocialManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/opensense/social/AbstractSocialManager;Lcom/htc/opensense/social/AbstractSocialManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/htc/opensense/social/AbstractSocialManager$Transport;-><init>(Lcom/htc/opensense/social/AbstractSocialManager;)V

    return-void
.end method


# virtual methods
.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/social/AbstractSocialManager;->getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsByFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;[Ljava/lang/String;)V
    .locals 1
    .parameter "response"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/social/AbstractSocialManager;->getAccountsByFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;[Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public getDataSources(Lcom/htc/opensense/social/ISocialManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "response"
    .parameter "accountType"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/social/AbstractSocialManager;->getDataSources(Lcom/htc/opensense/social/ISocialManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public getPluginTypes()[Lcom/htc/opensense/social/PluginDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-virtual {v0}, Lcom/htc/opensense/social/AbstractSocialManager;->getPluginTypes()[Lcom/htc/opensense/social/PluginDescription;

    move-result-object v0

    return-object v0
.end method

.method public hasFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 1
    .parameter "response"
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/social/AbstractSocialManager;->hasFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public publishActivityStream(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 1
    .parameter "response"
    .parameter "accounts"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/social/AbstractSocialManager;->publishActivityStream(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public syncActivityStreams(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 1
    .parameter "response"
    .parameter "accounts"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/social/AbstractSocialManager;->syncActivityStreams(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public syncContacts(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 1
    .parameter "response"
    .parameter "accounts"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/social/AbstractSocialManager;->syncContacts(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public syncLists(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 1
    .parameter "response"
    .parameter "accounts"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->this$0:Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/opensense/social/AbstractSocialManager;->syncLists(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 63
    return-void
.end method
