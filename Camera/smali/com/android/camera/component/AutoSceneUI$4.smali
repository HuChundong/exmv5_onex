.class Lcom/android/camera/component/AutoSceneUI$4;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneUI;->setupPropertyChangedCallbacks()V
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
        "Lcom/android/camera/effect/EffectBase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneUI$4;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$4;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #calls: Lcom/android/camera/component/AutoSceneUI;->checkScene()V
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$000(Lcom/android/camera/component/AutoSceneUI;)V

    return-void
.end method
