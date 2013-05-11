.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnSortByPriority;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApnSortByPriority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/ApnContext;",
        ">;"
    }
.end annotation


# instance fields
.field mReqApn:Lcom/android/internal/telephony/ApnContext;

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 1
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnSortByPriority;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/ApnContext;

    .line 661
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/ApnContext;)V
    .locals 1
    .parameter
    .parameter "reqApn"

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnSortByPriority;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/ApnContext;

    .line 664
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/ApnContext;

    .line 665
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/ApnContext;Lcom/android/internal/telephony/ApnContext;)I
    .locals 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 668
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getPriority()I

    move-result v2

    sub-int v0, v1, v2

    .line 669
    .local v0, ret:I
    if-nez v0, :cond_1

    .line 671
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/ApnContext;

    if-eqz v1, :cond_1

    .line 673
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 674
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnSortByPriority;->mReqApn:Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, -0x1

    .line 677
    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 658
    check-cast p1, Lcom/android/internal/telephony/ApnContext;

    .end local p1
    check-cast p2, Lcom/android/internal/telephony/ApnContext;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnSortByPriority;->compare(Lcom/android/internal/telephony/ApnContext;Lcom/android/internal/telephony/ApnContext;)I

    move-result v0

    return v0
.end method
