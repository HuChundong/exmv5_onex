.class Landroid/widget/HTCExtractEditText$1;
.super Ljava/lang/Object;
.source "HTCExtractEditText.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/HTCExtractEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HTCExtractEditText;


# direct methods
.method constructor <init>(Landroid/widget/HTCExtractEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Landroid/widget/HTCExtractEditText$1;->this$0:Landroid/widget/HTCExtractEditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 195
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$1;->this$0:Landroid/widget/HTCExtractEditText;

    invoke-virtual {v0}, Landroid/widget/HTCExtractEditText;->onDownAnimationCancel()V

    .line 196
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 191
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$1;->this$0:Landroid/widget/HTCExtractEditText;

    #calls: Landroid/widget/HTCExtractEditText;->onDownAnimationEnd()V
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$100(Landroid/widget/HTCExtractEditText;)V

    .line 192
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 188
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 185
    iget-object v0, p0, Landroid/widget/HTCExtractEditText$1;->this$0:Landroid/widget/HTCExtractEditText;

    #calls: Landroid/widget/HTCExtractEditText;->onDownAnimationStart()V
    invoke-static {v0}, Landroid/widget/HTCExtractEditText;->access$000(Landroid/widget/HTCExtractEditText;)V

    .line 186
    return-void
.end method
