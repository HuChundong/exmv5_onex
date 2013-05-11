.class public Lcom/android/camera/property/PropertyChangedEventArgs;
.super Lcom/android/camera/event/EventArgs;
.source "PropertyChangedEventArgs.java"


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
.field public final newValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final oldValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue;"
        }
    .end annotation
.end field

.field public final property:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<TTValue;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/property/Property;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<TTValue;>;TTValue;TTValue;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/event/EventArgs;-><init>()V

    iput-object p1, p0, Lcom/android/camera/property/PropertyChangedEventArgs;->property:Lcom/android/camera/property/Property;

    iput-object p2, p0, Lcom/android/camera/property/PropertyChangedEventArgs;->oldValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    return-void
.end method
