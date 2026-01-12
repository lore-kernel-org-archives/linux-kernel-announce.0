Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 880B62E7F3A
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768250057; cv=none; b=OGuZ1pQAegO1+0sWURZ7G0p05vve0yf3LB965caakb4W2dnjLyB9q2POq5g6neSWtgwct1SXw2FOBf+N+CRlmxBhtPOsNWheV7FPlbm/FMaJtVsINkOyHD3UWWl89qAZfYnaVhrSZMETKPy8GTfWxyj2tyhS5fqu/RBBkxqWUXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768250057; c=relaxed/simple;
	bh=1FbqVbYUcb/AzrJF9RySOTYbdbdS6kZan/XuMkyCTkE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=unxXrO+S9eS3ePpp832nsyonsbRQEURHc1Bk+QpXl1iHg+RaccndBOhi8PavjG4KWEqHWO+dRh4n5X1IUbBigmF4dHP7vibNqR6lZjma99xRbD6L9yjpCp2x2734F7GA8PC1qmT75qpwfFShzDmFr83KCv+s9/uG5nvknwXp1x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768250057;
	bh=1FbqVbYUcb/AzrJF9RySOTYbdbdS6kZan/XuMkyCTkE=;
	h=Subject:From:To:Date:From;
	b=eZw+YrhMiPtIE/DyHitFAXVSfsfXz3FvqtY4AV+brH1YI6N+zatCVt1j0o4EIbmqa
	 CaXifcbmrAaI75WCUuxF4PfwOp1FFe+Qtf+AJiqTPZLVc6/ZKjDSvwYHSEsqfKqijV
	 ON3TGWB4WyFviEKsunPPmsxroBH6IZ0RQTWPb8Xk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38B2DC116D0
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:34:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 47F42380CFDB
	for <linux-kernel-announce@vger.kernel.org>; Mon, 12 Jan 2026 20:30:52 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 12 Jan 2026 20:30:50 +0000
Message-Id: <20260112203050.release-6.18.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.5.xz

Linux kernel version 6.18.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.5/v6.18.4

