.class Lcom/android/camera/bi/MediaStatisticController$4;
.super Ljava/lang/Object;
.source "MediaStatisticController.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/bi/MediaStatisticController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/bi/MediaStatisticController;


# direct methods
.method constructor <init>(Lcom/android/camera/bi/MediaStatisticController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v6, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v6, v6, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v6, v6, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    invoke-virtual {v6, v5}, Lcom/android/camera/bi/MediaStatisticController;->writeBehaviorData(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v6, v6, Lcom/android/camera/bi/MediaStatisticController;->mComposeKeysTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    const/4 v7, 0x0

    iput v7, v6, Lcom/android/camera/bi/MediaStatisticController;->m_mediaTaken:I

    :goto_2
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v7, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    invoke-virtual {v7}, Lcom/android/camera/bi/MediaStatisticController;->rebuildComposeKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    instance-of v6, v6, Lcom/android/camera/bi/PhotoModeSnapStatisticController;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    const-string v7, "pref_bi_photo_mode_setting_snap_history"

    invoke-virtual {v6, v7}, Lcom/android/camera/bi/MediaStatisticController;->rebuildComposeKeyTable(Ljava/lang/String;)V

    :goto_3
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v7, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v8, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    iget-object v8, v8, Lcom/android/camera/bi/MediaStatisticController;->mComposeKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/camera/bi/MediaStatisticController;->getMediaCountInComposeKeyTable(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/camera/bi/MediaStatisticController;->m_mediaTaken:I

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/android/camera/bi/MediaStatisticController$4;->this$0:Lcom/android/camera/bi/MediaStatisticController;

    const-string v7, "pref_bi_video_setting_recording_history"

    invoke-virtual {v6, v7}, Lcom/android/camera/bi/MediaStatisticController;->rebuildComposeKeyTable(Ljava/lang/String;)V

    goto :goto_3
.end method
