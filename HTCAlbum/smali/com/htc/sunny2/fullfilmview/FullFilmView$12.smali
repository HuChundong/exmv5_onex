.class Lcom/htc/sunny2/fullfilmview/FullFilmView$12;
.super Ljava/lang/Object;
.source "FullFilmView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/fullfilmview/FullFilmView;->onDRMPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

.field final synthetic val$onPressed:Z


# direct methods
.method constructor <init>(Lcom/htc/sunny2/fullfilmview/FullFilmView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2754
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$12;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    iput-boolean p2, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$12;->val$onPressed:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2758
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$12;->this$0:Lcom/htc/sunny2/fullfilmview/FullFilmView;

    #getter for: Lcom/htc/sunny2/fullfilmview/FullFilmView;->mFullScreenView:Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;
    invoke-static {v0}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->access$600(Lcom/htc/sunny2/fullfilmview/FullFilmView;)Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;

    move-result-object v0

    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FullFilmView$12;->val$onPressed:Z

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FullScreenViewScene;->onDRMPressed(Z)V

    .line 2759
    return-void
.end method
