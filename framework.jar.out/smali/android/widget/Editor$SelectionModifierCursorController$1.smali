.class Landroid/widget/Editor$SelectionModifierCursorController$1;
.super Landroid/widget/Editor$SelectionEndHandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SelectionModifierCursorController;->initHandles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SelectionModifierCursorController;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SelectionModifierCursorController;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5458
    iput-object p1, p0, Landroid/widget/Editor$SelectionModifierCursorController$1;->this$1:Landroid/widget/Editor$SelectionModifierCursorController;

    iget-object v0, p1, Landroid/widget/Editor$SelectionModifierCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/Editor$SelectionEndHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 5461
    invoke-super {p0, p1}, Landroid/widget/Editor$SelectionEndHandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5462
    .local v0, b:Z
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController$1;->this$1:Landroid/widget/Editor$SelectionModifierCursorController;

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->access$5400(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionStartHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController$1;->this$1:Landroid/widget/Editor$SelectionModifierCursorController;

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mEndHandle:Landroid/widget/Editor$SelectionEndHandleView;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->access$5500(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionEndHandleView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionEndHandleView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5463
    iget-object v1, p0, Landroid/widget/Editor$SelectionModifierCursorController$1;->this$1:Landroid/widget/Editor$SelectionModifierCursorController;

    #getter for: Landroid/widget/Editor$SelectionModifierCursorController;->mStartHandle:Landroid/widget/Editor$SelectionStartHandleView;
    invoke-static {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->access$5400(Landroid/widget/Editor$SelectionModifierCursorController;)Landroid/widget/Editor$SelectionStartHandleView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Editor$SelectionStartHandleView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 5465
    :cond_0
    return v0
.end method
