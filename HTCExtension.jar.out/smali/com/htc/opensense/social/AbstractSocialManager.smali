.class public abstract Lcom/htc/opensense/social/AbstractSocialManager;
.super Ljava/lang/Object;
.source "AbstractSocialManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/AbstractSocialManager$1;,
        Lcom/htc/opensense/social/AbstractSocialManager$Transport;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mTransport:Lcom/htc/opensense/social/AbstractSocialManager$Transport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/htc/opensense/social/AbstractSocialManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/AbstractSocialManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/htc/opensense/social/AbstractSocialManager$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/social/AbstractSocialManager$Transport;-><init>(Lcom/htc/opensense/social/AbstractSocialManager;Lcom/htc/opensense/social/AbstractSocialManager$1;)V

    iput-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager;->mTransport:Lcom/htc/opensense/social/AbstractSocialManager$Transport;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAccountsByFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDataSources(Lcom/htc/opensense/social/ISocialManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final getIBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/opensense/social/AbstractSocialManager;->mTransport:Lcom/htc/opensense/social/AbstractSocialManager$Transport;

    invoke-virtual {v0}, Lcom/htc/opensense/social/AbstractSocialManager$Transport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPluginTypes()[Lcom/htc/opensense/social/PluginDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract hasFeatures(Lcom/htc/opensense/social/ISocialManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract publishActivityStream(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncActivityStreams(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncContacts(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract syncLists(Lcom/htc/opensense/social/ISocialManagerResponse;[Landroid/accounts/Account;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
