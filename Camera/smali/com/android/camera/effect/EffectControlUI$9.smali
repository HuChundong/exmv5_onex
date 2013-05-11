.class Lcom/android/camera/effect/EffectControlUI$9;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectControlUI;->initializeOverride()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$9;->this$0:Lcom/android/camera/effect/EffectControlUI;

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
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$9;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ControlBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/camera/effect/EffectControlUI;->access$500(Lcom/android/camera/effect/EffectControlUI;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$9;->this$0:Lcom/android/camera/effect/EffectControlUI;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/effect/EffectControlUI;->showControls(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectControlUI;->access$400(Lcom/android/camera/effect/EffectControlUI;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$9;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #calls: Lcom/android/camera/effect/EffectControlUI;->hideControls()V
    invoke-static {v0}, Lcom/android/camera/effect/EffectControlUI;->access$100(Lcom/android/camera/effect/EffectControlUI;)V

    goto :goto_0
.end method
