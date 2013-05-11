.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;
.super Ljava/lang/Object;
.source "SceneLocalPhotoBurstShot.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripItemSelectedListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V
    .locals 0
    .parameter

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1637
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoBurstShot;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 0
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 1668
    return-void
.end method

.method public onNothingSelected(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 0
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 1682
    return-void
.end method
