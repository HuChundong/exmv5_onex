.class public Lcom/android/camera/event/EventArgs;
.super Ljava/lang/Object;
.source "EventArgs.java"


# static fields
.field public static final empty:Lcom/android/camera/event/EventArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/camera/event/EventArgs;

    invoke-direct {v0}, Lcom/android/camera/event/EventArgs;-><init>()V

    sput-object v0, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
