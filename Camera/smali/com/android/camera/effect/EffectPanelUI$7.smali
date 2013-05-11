.class Lcom/android/camera/effect/EffectPanelUI$7;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/camera/effect/EffectBase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$7;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$7;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1400(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectPanelAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$7;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->m_EffectListAdapter:Lcom/android/camera/effect/EffectPanelAdapter;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1400(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/effect/EffectPanelAdapter;

    move-result-object v1

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectPanelAdapter;->updateEffectList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
