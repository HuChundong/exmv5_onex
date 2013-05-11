.class Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;
.super Ljava/lang/Object;
.source "AddressFinderServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 82
    const-string v1, "AddressFinderServiceManager"

    const-string v2, "[HTCAlbum][AddressFinderServiceManager][onServiceConnected]:... "

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-static {p2}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    move-result-object v2

    #setter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;
    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$002(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    .line 84
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$000(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mService:Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$000(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mCallback:Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$100(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/AddressFinderService/interfaces/IAddressFinderService;->registerCallback(Lcom/htc/AddressFinderService/interfaces/IAddressFinderResult;)V

    .line 88
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mNeedPostATask:Z
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$200(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    #getter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsNetworkUseFirstTime:Z
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$300(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->addressLookup(Z)V

    .line 90
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    const/4 v2, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mNeedPostATask:Z
    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$202(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Z)Z

    .line 91
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    const/4 v2, 0x0

    #setter for: Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->mIsNetworkUseFirstTime:Z
    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;->access$302(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AddressFinderServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][AddressFinderServiceManager][onServiceConnected]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 102
    const-string v0, "AddressFinderServiceManager"

    const-string v1, "[HTCAlbum][AddressFinderServiceManager][onServiceDisconnected]:... "

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method
