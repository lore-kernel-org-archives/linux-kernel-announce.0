Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2413D3B8D62
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:38:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765057119; cv=none; b=lXJgXgePjR5Wr0zdf1Zr2RCalqxl3X0ivbfMJ7nT0bLLRTYb8/Ew9VN+H9tqlNvetWu9dg02pT6TjLJAvjCgs7csaRENxNYW8a7JE+QScpmU0kwS97dtpiPEJRRapeZrQ8zIfAMcywhw/jeZ8SQQViC8h3qDfAa7kOKreHppe8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765057119; c=relaxed/simple;
	bh=DVOxjqqcrXRJBuBhYoT8cl8hJntcCXmliTrme112OeA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=S7raTucF2fEJca4wRF57TRQ1U4Y2ac49Zamyc1Jxqkuu2o8IGcj2+FcqjzcQ6PFLG8ydZh/dDgyw09ADKsAGp4aB0nKXGot3xdssKRUU+91hVKakbKdVx9/VEcv116yqODQSuu+rBwZ1AhS28MSVEjd63g5cDZsp3T80O3Z3+oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1765057119;
	bh=DVOxjqqcrXRJBuBhYoT8cl8hJntcCXmliTrme112OeA=;
	h=Subject:From:To:Date:From;
	b=O9DUaDvquzAu5TWW6e45UxldnD5eFWNfLHBLNSHhj+D4pQXAb7iFFPhkZXzP8Axk1
	 RM6M8fAIQTYdQdDjrx/NXECjhGdhSvgfgN0GnWtVkk6yB3GBqpa6DT3Ot9MzeGO4Ev
	 D0jWqxxQzCcmdOmg5EEapVLIlCFT5Rj5SKMFh3BI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B68B6C4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:38:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BA5E63808200
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:35:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.119 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 06 Dec 2025 21:35:35 +0000
Message-Id: <20251206213535.release-6.6.119@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.119
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.119.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.119.xz

Linux kernel version 6.6.119 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.119.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.119.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.119.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.119/v6.6.118

