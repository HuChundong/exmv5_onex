.class Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$2;
.super Ljava/lang/Object;
.source "SceneDlnaGridviewBase.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/GridView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$2;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClickIRT(Lcom/htc/sunnyCore/widget/gridview/GridView;Lcom/htc/sunnyCore/view/SView;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "index"
    .parameter "id"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase$2;->this$0:Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;

    const/16 v1, 0x139c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDLNA/SceneDlnaGridviewBase;->onPostMessage(ILjava/lang/Object;I)V

    .line 48
    return-void
.end method
