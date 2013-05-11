.class Lcom/android/camera/effect/EffectPanelUI$16;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$16;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$16;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1600(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/PopupBubble;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/widget/PopupBubble;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$16;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$16;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/16 v2, 0x2711

    const/4 v5, 0x0

    const-wide/16 v6, 0x1388

    const/4 v8, 0x1

    move v4, v3

    #calls: Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z
    invoke-static/range {v0 .. v8}, Lcom/android/camera/effect/EffectPanelUI;->access$2400(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    :cond_0
    return v3
.end method
