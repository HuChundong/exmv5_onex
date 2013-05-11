.class Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;
.super Ljava/lang/Object;
.source "MultiTrigger.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/trigger/MultiTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangedCallback"
.end annotation


# instance fields
.field private final m_Trigger:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/trigger/MultiTrigger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/trigger/MultiTrigger;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;->m_Trigger:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/trigger/MultiTrigger$ChangedCallback;->m_Trigger:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/trigger/MultiTrigger;

    if-eqz v0, :cond_0

    #calls: Lcom/android/camera/trigger/MultiTrigger;->checkActivationState(Lcom/android/camera/property/PropertyChangedEventArgs;)V
    invoke-static {v0, p2}, Lcom/android/camera/trigger/MultiTrigger;->access$000(Lcom/android/camera/trigger/MultiTrigger;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    :cond_0
    return-void
.end method
