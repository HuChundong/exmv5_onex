.class public Lcom/android/camera/trigger/MultiTrigger$Condition;
.super Ljava/lang/Object;
.source "MultiTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/trigger/MultiTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# instance fields
.field public final property:Lcom/android/camera/property/Property;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "property"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/trigger/MultiTrigger$Condition;->property:Lcom/android/camera/property/Property;

    iput-object p2, p0, Lcom/android/camera/trigger/MultiTrigger$Condition;->value:Ljava/lang/Object;

    return-void
.end method
