.class Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;
.super Ljava/lang/Object;
.source "HtcPaintManager.java"

# interfaces
.implements Lcom/htc/painting/penmenu15/OnActionPerformListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/PaintManager/HtcPaintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/PaintManager/HtcPaintManager;


# direct methods
.method private constructor <init>(Lcom/htc/album/PaintManager/HtcPaintManager;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/PaintManager/HtcPaintManager;Lcom/htc/album/PaintManager/HtcPaintManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;-><init>(Lcom/htc/album/PaintManager/HtcPaintManager;)V

    return-void
.end method


# virtual methods
.method public onActionPerform(I)Z
    .locals 5
    .parameter "nAction"

    .prologue
    const/4 v4, 0x0

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mAdapter:Lcom/htc/album/PaintManager/Interface/IPaintings;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$100(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPaintings;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v0

    .line 211
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 158
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    move v1, v0

    .line 211
    .restart local v1       #bResult:I
    goto :goto_0

    .line 162
    .end local v1           #bResult:I
    :sswitch_0
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$200(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/painting/engine/HtcPaintingView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/painting/engine/HtcPaintingView;->clearStrokeGroup(I)V

    .line 163
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->onPaintPartialStroke(II)V

    .line 164
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][onActionPerform]: CLEAR_ACTION_ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$400(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$400(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;->onClearAll(I)V

    goto :goto_1

    .line 172
    :sswitch_1
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$200(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/painting/engine/HtcPaintingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPaintingView;->canRedo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$200(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/painting/engine/HtcPaintingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPaintingView;->redo()V

    .line 175
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->onPaintPartialStroke(II)V

    .line 176
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][onActionPerform]: REDO_ACTION_ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$400(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$400(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;->onReDo(I)V

    .line 185
    :cond_2
    :goto_2
    const/4 v0, 0x1

    .line 187
    goto/16 :goto_1

    .line 182
    :cond_3
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][onActionPerform]: cannot redo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 190
    :sswitch_2
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$200(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/painting/engine/HtcPaintingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPaintingView;->canUndo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 192
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mPaintView:Lcom/htc/painting/engine/HtcPaintingView;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$200(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/painting/engine/HtcPaintingView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/painting/engine/HtcPaintingView;->undo()V

    .line 193
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->onPaintPartialStroke(II)V

    .line 194
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][onActionPerform]: UNDO_ACTION_ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$400(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 196
    iget-object v2, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mNotifyPenMenuAction:Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;
    invoke-static {v2}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$400(Lcom/htc/album/PaintManager/HtcPaintManager;)Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v3}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/htc/album/PaintManager/Interface/IPenMenuActionNotify;->onUnDo(I)V

    .line 203
    :cond_4
    :goto_3
    const/4 v0, 0x1

    .line 205
    goto/16 :goto_1

    .line 200
    :cond_5
    invoke-static {}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][HtcPaintManager][onActionPerform]: cannot undo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/PaintManager/HtcPaintManager$PenActionListener;->this$0:Lcom/htc/album/PaintManager/HtcPaintManager;

    #getter for: Lcom/htc/album/PaintManager/HtcPaintManager;->mCurrentPaintGroup:I
    invoke-static {v4}, Lcom/htc/album/PaintManager/HtcPaintManager;->access$000(Lcom/htc/album/PaintManager/HtcPaintManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x12c -> :sswitch_0
        0x190 -> :sswitch_1
    .end sparse-switch
.end method
