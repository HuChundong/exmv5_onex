.class public Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;
.super Ljava/lang/Object;
.source "GridViewPreparatorImpl.java"

# interfaces
.implements Lcom/htc/sunnyCore/common/IterationTask$TaskCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewDecodeThreadCallback"
.end annotation


# static fields
.field private static final CANCEL_TAG:Ljava/lang/String; = "[onTaskCancel]"

.field private static final END_TAG:Ljava/lang/String; = "[onTaskEnd]"

.field private static final TAG:Ljava/lang/String; = "ViewDecodeThreadCallback"


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 3949
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addTaskBack(Lcom/htc/sunnyCore/common/IterationTask;Ljava/lang/String;)V
    .locals 2
    .parameter "task"
    .parameter "sTag"

    .prologue
    .line 3968
    instance-of v0, p1, Lcom/htc/sunny2/common/ViewDecodeTask;

    if-eqz v0, :cond_1

    .line 3974
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;->this$0:Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;

    iget-object v0, v0, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl;->mViewTaskQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    check-cast p1, Lcom/htc/sunny2/common/IterationTaskGallery;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 3981
    :cond_0
    :goto_0
    return-void

    .line 3976
    .restart local p1
    :cond_1
    const-string v0, "ViewDecodeThreadCallback"

    const-string v1, "[addTaskBack] task is null or unknown task."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    if-eqz p1, :cond_0

    .line 3978
    invoke-virtual {p1}, Lcom/htc/sunnyCore/common/IterationTask;->release()V

    goto :goto_0
.end method


# virtual methods
.method public onTaskCancel(Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 3964
    const-string v0, "[onTaskCancel]"

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;->addTaskBack(Lcom/htc/sunnyCore/common/IterationTask;Ljava/lang/String;)V

    .line 3965
    return-void
.end method

.method public onTaskEnd(Landroid/os/Bundle;Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 1
    .parameter "bundle"
    .parameter "task"

    .prologue
    .line 3959
    const-string v0, "[onTaskEnd]"

    invoke-direct {p0, p2, v0}, Lcom/htc/sunny2/widget/gridview/GridViewPreparatorImpl$ViewDecodeThreadCallback;->addTaskBack(Lcom/htc/sunnyCore/common/IterationTask;Ljava/lang/String;)V

    .line 3960
    return-void
.end method

.method public onTaskStart(Lcom/htc/sunnyCore/common/IterationTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 3955
    return-void
.end method
