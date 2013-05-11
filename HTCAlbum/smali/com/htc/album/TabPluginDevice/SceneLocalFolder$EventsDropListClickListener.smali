.class public Lcom/htc/album/TabPluginDevice/SceneLocalFolder$EventsDropListClickListener;
.super Ljava/lang/Object;
.source "SceneLocalFolder.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/SceneLocalFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventsDropListClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/SceneLocalFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$EventsDropListClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "nIndex"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1038
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/SceneLocalFolder$EventsDropListClickListener;->this$0:Lcom/htc/album/TabPluginDevice/SceneLocalFolder;

    invoke-virtual {v0, p3}, Lcom/htc/album/TabPluginDevice/SceneLocalFolder;->onDropListItemClick(I)V

    .line 1039
    return-void
.end method
