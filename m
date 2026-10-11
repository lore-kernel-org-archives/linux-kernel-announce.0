Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A2F449B11
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Oct 2026 13:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791726622; cv=none; b=nku7ffk985NXaLu5QSIuihyjKZhDT1DoiPRYTNUe+uRk1ak4XvsHAhA0YLh+Pg8w4GHXZ6lQ2uM1veQ/vyMBl6/oryg+fC41rep0lBspBnGK/nzHCRty55DvyLL631sYdK28R1vRRAY30IqhZkKt4aLX+o2JtNjhh7C6dylF96o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791726622; c=relaxed/simple;
	bh=dFjxbJ0x72Y+nr1ZrxHzfD0NnaL308oRnXyFkdby0rM=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=SY9e/3UiZ6oHPyiWATZFdeOS+xq2kiXAgVThA+yq//sw9YkVvnHAA+C+4DGD2FeJsXB4qi1gOlog3qkZl6u81v/+1q85Rhv2M50pRKid37FBZfq9fCfskIiATIdLEtO23/If86wnMNF2Sg13YeZk/jN5CDZojVDWd7aPNDOILaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1791726622;
	bh=dFjxbJ0x72Y+nr1ZrxHzfD0NnaL308oRnXyFkdby0rM=;
	h=Subject:From:To:Date:From;
	b=t1/RQmRjEWeDUHLvkHqU11mxudWIaokw5Tz0SozQTSYm6LQ1/tx35i38d2UBN9jSp
	 p0M4Mf8QCIMWbncfEMTQ3djarX39uifluZKSZhRv+TyOSUXvcBTjWnICoKhUlqPXvg
	 GOQelmnRfN3GrNtou3wLAPey29QHE15mlYQlsDBU=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D476C1F0089C
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Oct 2026 13:50:21 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B677B3811966
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Oct 2026 13:50:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 11 Oct 2026 13:50:20 +0000
Message-Id: <20261011135020.release-7.2.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.10.xz

Linux kernel version 7.2.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.10/v7.2.9

