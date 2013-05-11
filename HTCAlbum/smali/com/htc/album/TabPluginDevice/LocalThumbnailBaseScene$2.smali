.class Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$2;
.super Ljava/lang/Object;
.source "LocalThumbnailBaseScene.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$LoadingNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldState:I

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$2;->this$0:Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/htc/album/TabPluginDevice/LocalThumbnailBaseScene$2;->oldState:I

    return-void
.end method


# virtual methods
.method public onLoadingStatusChange(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 61
    return-void
.end method
