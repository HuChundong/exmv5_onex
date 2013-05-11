.class final Lcom/android/camera/component/StorageWatcherBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "StorageWatcherBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/StorageWatcher;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "Storage Watcher"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/StorageWatcherBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/StorageWatcher;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/StorageWatcher;
    .locals 1

    new-instance v0, Lcom/android/camera/component/StorageWatcher;

    invoke-direct {v0, p1}, Lcom/android/camera/component/StorageWatcher;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method
