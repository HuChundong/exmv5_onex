.class public Lcom/android/camera/CameraApplication;
.super Landroid/app/Application;
.source "CameraApplication.java"


# static fields
.field private static m_ThisApplication:Lcom/android/camera/CameraApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static current()Lcom/android/camera/CameraApplication;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraApplication;->m_ThisApplication:Lcom/android/camera/CameraApplication;

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    sput-object p0, Lcom/android/camera/CameraApplication;->m_ThisApplication:Lcom/android/camera/CameraApplication;

    const-string v0, "CameraApplication"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
