Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98CD3C2E
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771259428; cv=none; b=ePSYxWKMndSACs+Kfnf3hmYx5yq+Fe/6KmdR6yC6pnujJYfUzZe8AHGhvIWIz8Vtlx5yBPDvBYOAfIUN5i76z5tq4vsrLJ7BAfmsujONvyeDh7nfrCeysflbnix6Wd/9AUe55ZGsR9utTX8f/0oO2Ds5bTvw3aK6JMapcc1hp2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771259428; c=relaxed/simple;
	bh=spuh4j7QxL7F/JEAIRK0NouZ0qCxyYRrrLGpi9+8DKU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Bw9t2DRgNop9TR9wCMK/mG85rQ1MquYxv8uVRydTBtnDK/5Xr75ravegOgRnwUG07T2RWqcIB2o5s69QQyKnAgovBtkl2hT3CbtZroaJmanCA81fpRLncglu3PgKnO7BBzswNHH0X7yxKQTROHjqVbAEoJMK+aSb8lyb8FcnjiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771259428;
	bh=spuh4j7QxL7F/JEAIRK0NouZ0qCxyYRrrLGpi9+8DKU=;
	h=Subject:From:To:Date:From;
	b=bfbyvDy5OOmMzjUrgutF0OnR3/D2qFlvYwBIYHJkXl6HB6dJYiXUETrLueK8rF/OM
	 MOhOuFEfGknW02q5CQxYbHEi36YmRAovj5/ifxRSk2dVwdQ1d90phT8jgJKU+9V7fa
	 ABqajitNenrpH3Awi0DTZNjeFMpJnpLxqquyNi9s=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79655C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:30:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 0DB4639308C1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 16 Feb 2026 16:30:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 16 Feb 2026 16:30:20 +0000
Message-Id: <20260216163020.release-6.19.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.2.xz

Linux kernel version 6.19.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.2/v6.19.1

