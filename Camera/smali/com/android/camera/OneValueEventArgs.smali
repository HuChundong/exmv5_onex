.class public Lcom/android/camera/OneValueEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "OneValueEventArgs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/event/EventArgs;"
    }
.end annotation


# instance fields
.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    return-void
.end method
