.class public Lcom/htc/wrap/android/view/HtcWrapGestureDetector;
.super Ljava/lang/Object;
.source "HtcWrapGestureDetector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;I)Landroid/view/GestureDetector;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "degree"

    .prologue
    .line 29
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 30
    .local v0, gd:Landroid/view/GestureDetector;
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->setVelocityTrackerDegree(I)V

    .line 31
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;I)Landroid/view/GestureDetector;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "degree"

    .prologue
    .line 48
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 49
    .local v0, gd:Landroid/view/GestureDetector;
    invoke-virtual {v0, p3}, Landroid/view/GestureDetector;->setVelocityTrackerDegree(I)V

    .line 50
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Ljava/lang/String;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "strategy"

    .prologue
    .line 130
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 131
    .local v0, gd:Landroid/view/GestureDetector;
    invoke-virtual {v0, p3}, Landroid/view/GestureDetector;->setVelocityTrackerStrategy(Ljava/lang/String;)V

    .line 132
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;ZI)Landroid/view/GestureDetector;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "ignoreMultitouch"
    .parameter "degree"

    .prologue
    .line 70
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 71
    .local v0, gd:Landroid/view/GestureDetector;
    invoke-virtual {v0, p4}, Landroid/view/GestureDetector;->setVelocityTrackerDegree(I)V

    .line 72
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;ZLjava/lang/String;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "ignoreMultitouch"
    .parameter "strategy"

    .prologue
    .line 163
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    .line 164
    .local v0, gd:Landroid/view/GestureDetector;
    invoke-virtual {v0, p4}, Landroid/view/GestureDetector;->setVelocityTrackerStrategy(Ljava/lang/String;)V

    .line 165
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Ljava/lang/String;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "strategy"

    .prologue
    .line 100
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 101
    .local v0, gd:Landroid/view/GestureDetector;
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->setVelocityTrackerStrategy(Ljava/lang/String;)V

    .line 102
    return-object v0
.end method
