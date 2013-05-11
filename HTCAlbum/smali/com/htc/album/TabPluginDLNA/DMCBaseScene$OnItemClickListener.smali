.class Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;
.super Ljava/lang/Object;
.source "DMCBaseScene.java"

# interfaces
.implements Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/DMCBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V
    .locals 0
    .parameter

    .prologue
    .line 1343
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.OnItemClickListener;"
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;Lcom/htc/album/TabPluginDLNA/DMCBaseScene$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1343
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.OnItemClickListener;"
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;-><init>(Lcom/htc/album/TabPluginDLNA/DMCBaseScene;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/sunnyCore/view/SView;I)V
    .locals 2
    .parameter "parent"
    .parameter "position"

    .prologue
    .line 1347
    .local p0, this:Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;,"Lcom/htc/album/TabPluginDLNA/DMCBaseScene<TADAPTER;>.OnItemClickListener;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/DMCBaseScene$OnItemClickListener;->this$0:Lcom/htc/album/TabPluginDLNA/DMCBaseScene;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/htc/album/TabPluginDLNA/DMCBaseScene;->doSimulateScreenTouched(IZ)V

    .line 1348
    return-void
.end method
