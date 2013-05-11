.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1787
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 2
    .parameter "parent"
    .parameter "position"

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    const/4 v1, 0x0

    #calls: Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->doSimulateScreenTouched(IZ)V
    invoke-static {v0, p2, v1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;->access$3400(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;IZ)V

    .line 1792
    return-void
.end method
