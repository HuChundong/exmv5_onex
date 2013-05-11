.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner$1;
.super Ljava/lang/Object;
.source "DMCBaseScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;->onItemSelected(Lcom/htc/sunnyCore/view/SView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;

.field final synthetic val$idx:I


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1367
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner$1;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner.1;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;

    iput p2, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner$1;->val$idx:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1373
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner$1;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner.1;"
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner$1;->this$1:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;

    iget-object v1, v1, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    #getter for: Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->mFullFilmViewPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->access$700(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner$1;->val$idx:I

    iget v4, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$FilmstripItemSelectedListner$1;->val$idx:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setVisibleRange(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :goto_0
    return-void

    .line 1375
    :catch_0
    move-exception v0

    .line 1377
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DLNABaseScene"

    const-string v2, "[FilmstripItemSelectedListner][onItemSelected]set NG"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
