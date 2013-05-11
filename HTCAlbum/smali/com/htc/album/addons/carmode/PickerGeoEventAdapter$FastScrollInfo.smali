.class public Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;
.super Ljava/lang/Object;
.source "PickerGeoEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FastScrollInfo"
.end annotation


# instance fields
.field private mDateName:Ljava/lang/String;

.field private mIndex:I

.field final synthetic this$0:Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "dateName"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 225
    iput-object p1, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->this$0:Lcom/htc/album/addons/carmode/PickerGeoEventAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->mDateName:Ljava/lang/String;

    .line 223
    iput v3, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->mIndex:I

    .line 226
    iput-object p2, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->mDateName:Ljava/lang/String;

    .line 227
    iput p3, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->mIndex:I

    .line 228
    const-string v0, "AdapterSmartEvent"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "FastScrollInfo mDateName = "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->mDateName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ", mIndex = "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->mIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-void
.end method


# virtual methods
.method public getDateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->mDateName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/htc/album/addons/carmode/PickerGeoEventAdapter$FastScrollInfo;->mIndex:I

    return v0
.end method
