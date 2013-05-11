.class Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;
.super Lcom/htc/sunnyCore/RenderThreadEvent;
.source "FullFilmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileTextureReadyNotifyEvent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2793
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$TileTextureReadyNotifyEvent;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    .line 2794
    invoke-direct {p0, p2, p3}, Lcom/htc/sunnyCore/RenderThreadEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2795
    return-void
.end method


# virtual methods
.method public onCancelIRT(Lcom/htc/sunnyCore/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 2805
    return-void
.end method

.method public onProcessEventIRT()V
    .locals 0

    .prologue
    .line 2800
    return-void
.end method
