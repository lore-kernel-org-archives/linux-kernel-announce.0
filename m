Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 841F1227E81
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744014608; cv=none; b=DtkycY3WVJC+V3ZTmbrndkdNlyXEtV5I1wffdHQGhRtxkmVvrpa4LLbCLID4pkgSnEFYXWeHsk2ra98594+EyxXSQL/OceWJEQOTUsEY6VqKjgHZV0pmB1in1TBnA1RjRVx5Xc4N5c8+FBvtdVlciYBQOlL2ob+C6e3Sh6xfWUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744014608; c=relaxed/simple;
	bh=PI5kTIn62ly+QgB/2IEhLHHmso2QbjrbWxl5L/LLd5o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=nTqVYxeDqFMPwD5XPMMJ7x1LslwL1QOfjfQI6SntTc79zTHtC61Ehy4vEeClZcMyjemMIrBUQ4aeIF7avhjbqpf0shtwpTI38Q3aX29ICwW8mIBKLNZFmo25EV3k9a3CHE3rcrUjfRz63E74w2RSV0BvN+31g8Kc/uYsB7k/a78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1744014608;
	bh=PI5kTIn62ly+QgB/2IEhLHHmso2QbjrbWxl5L/LLd5o=;
	h=Subject:From:To:Date:From;
	b=cJWhMckh8eYIc0BLobpMvV/NPCLfpipOXWXmCUigWaqdomWIwqNnVj4K8678IVDn+
	 kHF52qlICyNBIakd4npCuOt2i9tQfMvXNm9Ozd9o85GXYTrKIR8r97vE+vk4WImzlF
	 B7PmMK62rWB7r7XL/dU2lYS3LVHtc9bVFXqbjIK4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16C99C4CEDD
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:30:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 75F303804CAE
	for <linux-kernel-announce@vger.kernel.org>; Mon,  7 Apr 2025 08:30:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.86 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 07 Apr 2025 08:30:44 +0000
Message-Id: <20250407083044.release-6.6.86@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.86
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.86.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.86.xz

Linux kernel version 6.6.86 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.86.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.86.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.86.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.86/v6.6.85

