.class Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;
.super Ljava/lang/Object;
.source "SceneLocalPhotoFullscreen.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripItemSelectedListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 3364
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3364
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDevice/SceneLocalPhotoFullscreen;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 0
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 3394
    return-void
.end method

.method public onNothingSelected(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 0
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 3408
    return-void
.end method
