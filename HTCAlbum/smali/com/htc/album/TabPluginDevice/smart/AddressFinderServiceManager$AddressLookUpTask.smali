.class Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;
.super Ljava/lang/Object;
.source "AddressFinderServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressLookUpTask"
.end annotation


# instance fields
.field private mScene:Ljava/lang/String;

.field private mTaskArray:[Lcom/htc/AddressFinderService/interfaces/AddressData;

.field private mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCount:I

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 623
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->this$0:Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mScene:Ljava/lang/String;

    .line 626
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mTaskArray:[Lcom/htc/AddressFinderService/interfaces/AddressData;

    .line 627
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mTaskMap:Ljava/util/HashMap;

    .line 628
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mUpdateCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;-><init>(Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager;)V

    return-void
.end method


# virtual methods
.method public getTaskArray()[Lcom/htc/AddressFinderService/interfaces/AddressData;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mTaskArray:[Lcom/htc/AddressFinderService/interfaces/AddressData;

    return-object v0
.end method

.method public getTaskMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mTaskMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTaskScene()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mScene:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateCount()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mUpdateCount:I

    return v0
.end method

.method public setTaskMap(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/AddressFinderService/interfaces/AddressData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, taskMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/htc/AddressFinderService/interfaces/AddressData;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mTaskMap:Ljava/util/HashMap;

    .line 650
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/AddressFinderService/interfaces/AddressData;

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mTaskArray:[Lcom/htc/AddressFinderService/interfaces/AddressData;

    .line 652
    :cond_0
    return-void
.end method

.method public setTaskScene(Ljava/lang/String;)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 632
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mScene:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public setUpdateCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 640
    iput p1, p0, Lcom/htc/album/TabPluginDevice/smart/AddressFinderServiceManager$AddressLookUpTask;->mUpdateCount:I

    .line 641
    return-void
.end method
