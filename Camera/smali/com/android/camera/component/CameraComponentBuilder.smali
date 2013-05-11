.class public abstract Lcom/android/camera/component/CameraComponentBuilder;
.super Ljava/lang/Object;
.source "CameraComponentBuilder.java"

# interfaces
.implements Lcom/android/camera/component/IComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TComponent:",
        "Lcom/android/camera/component/Component;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/component/IComponentBuilder",
        "<TTComponent;>;"
    }
.end annotation


# instance fields
.field private final m_ComponentCategory:Lcom/android/camera/component/ComponentCategory;

.field private final m_ComponentName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/component/CameraComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/camera/component/CameraComponentBuilder;->m_ComponentCategory:Lcom/android/camera/component/ComponentCategory;

    iput-object p1, p0, Lcom/android/camera/component/CameraComponentBuilder;->m_ComponentName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getComponentCategory()Lcom/android/camera/component/ComponentCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraComponentBuilder;->m_ComponentCategory:Lcom/android/camera/component/ComponentCategory;

    return-object v0
.end method

.method public final getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/CameraComponentBuilder;->m_ComponentName:Ljava/lang/String;

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final varargs isSupported([Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    aget-object v0, p1, v1

    instance-of v0, v0, Lcom/android/camera/HTCCamera;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    aget-object v0, p1, v1

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/CameraComponentBuilder;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
