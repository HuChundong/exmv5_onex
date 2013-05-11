.class Lcom/android/internal/policy/impl/PhoneWindowManager$4;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->handleLongPressOnHome(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$eventDownTime:J


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-wide p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->val$eventDownTime:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-wide v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$4;->val$eventDownTime:J

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->startHtcSpeak(J)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;J)V

    .line 1265
    return-void
.end method
