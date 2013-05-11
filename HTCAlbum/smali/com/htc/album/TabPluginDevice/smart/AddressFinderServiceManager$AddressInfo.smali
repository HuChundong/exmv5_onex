.class Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;
.super Ljava/lang/Object;
.source "AddressFinderServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressInfo"
.end annotation


# instance fields
.field public mData:Lcom/htc/AddressFinderService/interfaces/AddressData;

.field public mState:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Lcom/htc/AddressFinderService/interfaces/AddressData;)V
    .locals 1
    .parameter
    .parameter "data"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mData:Lcom/htc/AddressFinderService/interfaces/AddressData;

    .line 67
    sget-object v0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;->UNKNOWN:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mState:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$ADDRESS_STATE;

    .line 71
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressInfo;->mData:Lcom/htc/AddressFinderService/interfaces/AddressData;

    .line 72
    return-void
.end method
