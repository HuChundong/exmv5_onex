.class Lcom/htc/opensense/social/SocialManager$7;
.super Lcom/htc/opensense/social/SocialManager$BaseFutureTask;
.source "SocialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/social/SocialManager;->getDataSources(Ljava/lang/String;[Ljava/lang/String;Lcom/htc/opensense/social/SocialManagerCallback;Landroid/os/Handler;)Lcom/htc/opensense/social/SocialManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense/social/SocialManager$BaseFutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/social/SocialManager;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$features:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    .local p3, x1:Lcom/htc/opensense/social/SocialManagerCallback;,"Lcom/htc/opensense/social/SocialManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lcom/htc/opensense/social/SocialManager$7;->this$0:Lcom/htc/opensense/social/SocialManager;

    iput-object p4, p0, Lcom/htc/opensense/social/SocialManager$7;->val$accountType:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/opensense/social/SocialManager$7;->val$features:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;-><init>(Lcom/htc/opensense/social/SocialManager;Landroid/os/Handler;Lcom/htc/opensense/social/SocialManagerCallback;)V

    return-void
.end method


# virtual methods
.method public bundleToResult(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/PluginException;
        }
    .end annotation

    .prologue
    .line 480
    return-object p1
.end method

.method public bridge synthetic bundleToResult(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/PluginException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-virtual {p0, p1}, Lcom/htc/opensense/social/SocialManager$7;->bundleToResult(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public doWork()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/opensense/social/SocialManager$7;->this$0:Lcom/htc/opensense/social/SocialManager;

    #getter for: Lcom/htc/opensense/social/SocialManager;->mService:Lcom/htc/opensense/social/ISocialManager;
    invoke-static {v0}, Lcom/htc/opensense/social/SocialManager;->access$000(Lcom/htc/opensense/social/SocialManager;)Lcom/htc/opensense/social/ISocialManager;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense/social/SocialManager$BaseFutureTask;->mResponse:Lcom/htc/opensense/social/ISocialManagerResponse;

    iget-object v2, p0, Lcom/htc/opensense/social/SocialManager$7;->val$accountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/opensense/social/SocialManager$7;->val$features:[Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/opensense/social/ISocialManager;->getDataSources(Lcom/htc/opensense/social/ISocialManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    .line 476
    return-void
.end method
