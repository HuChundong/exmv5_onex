.class Lcom/android/camera/effect/EffectPanelUI$15;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$2100(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/IEffectManager;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$2100(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/IEffectManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/effect/IEffectManager;->effectList:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->isCaptureUIBlocked()Z
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$2200(Lcom/android/camera/effect/EffectPanelUI;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$2100(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/IEffectManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v2, v0}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$2100(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/IEffectManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/IEffectManager;->setCurrentEffect(Ljava/lang/Class;)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$1400(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectPanelAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectPanelAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/4 v3, 0x1

    #calls: Lcom/android/camera/effect/EffectPanelUI;->ensureEffectItemVisible(Z)V
    invoke-static {v2, v3}, Lcom/android/camera/effect/EffectPanelUI;->access$2300(Lcom/android/camera/effect/EffectPanelUI;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/camera/effect/EffectPanelUI$15;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectPopup:Lcom/android/camera/widget/PopupBubble;
    invoke-static {v2}, Lcom/android/camera/effect/EffectPanelUI;->access$1600(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/widget/PopupBubble;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/widget/PopupBubble;->close()V

    goto :goto_0
.end method
