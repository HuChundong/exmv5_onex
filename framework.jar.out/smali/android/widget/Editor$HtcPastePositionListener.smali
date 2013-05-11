.class Landroid/widget/Editor$HtcPastePositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HtcPastePositionListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 6090
    iput-object p1, p0, Landroid/widget/Editor$HtcPastePositionListener;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6090
    invoke-direct {p0, p1}, Landroid/widget/Editor$HtcPastePositionListener;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .locals 2
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    .line 6094
    iget-object v0, p0, Landroid/widget/Editor$HtcPastePositionListener;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->useHtcTextSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HtcPastePositionListener;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->canReplaceActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$HtcPastePositionListener;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v0, v0, Landroid/widget/TextView;->mSelectionManager:Lcom/htc/textselection/HtcTextSelectionManager;

    iget-object v1, p0, Landroid/widget/Editor$HtcPastePositionListener;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->canUpdateQuickAction(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6095
    iget-object v0, p0, Landroid/widget/Editor$HtcPastePositionListener;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->showQuickAction()V
    invoke-static {v0}, Landroid/widget/Editor;->access$1200(Landroid/widget/Editor;)V

    .line 6097
    :cond_0
    return-void
.end method
