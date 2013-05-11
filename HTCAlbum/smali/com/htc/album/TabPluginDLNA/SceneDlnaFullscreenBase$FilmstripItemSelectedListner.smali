.class Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;
.super Ljava/lang/Object;
.source "SceneDlnaFullscreenBase.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmstripItemSelectedListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 3
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 391
    move v0, p2

    .line 392
    .local v0, idx:I
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner$1;-><init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaFullscreenBase$FilmstripItemSelectedListner;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method public onNothingSelected(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 0
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 421
    return-void
.end method
