Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBA9308F38
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Jan 2026 02:37:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767580632; cv=none; b=Go/kk0tHhUhyo8AUAgElH7PbJCDyPw7K8fO40zVXOI27QMVyAr+bYgO4DnTML59TBx2IK8TF2bRvnLaxEpMUPR1SB+Z3UD2XnPWTWJHssokNZEg6XKoVpc2W/knUTrCBXmAHmaK/O9rjFCB3vWvd0WBxrEFd3ULeciQT2xsymrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767580632; c=relaxed/simple;
	bh=s7ybmeH4HuFPi/tbazAGdLMiFJK1PYoeoC+vMVz0BFI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DA1GPmn5OedFfebCvMhchyACd1squVx5r5Jn4VkDr7fffrrShZOFGWWFYeWEQiA1z4VAFUL68uK/kp8W8aMZpbq+QodCP6tms/VxWR16PlSLSYNCspGi95xSXIajFYR5dIKePVeJcakEvxhE81BpMnz4TysaNTZrV1JNgoiY34Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1767580632;
	bh=s7ybmeH4HuFPi/tbazAGdLMiFJK1PYoeoC+vMVz0BFI=;
	h=Subject:From:To:Date:From;
	b=BQZCU6rYeL89KUcFSop7RGSW8i6h0dOm9e8Ruby4LuoX8sPQ6pAVsLLsNMckDEcIs
	 Grqlt9yoGEZ7X6R6bwhQ6I2Eor5kYdpgmnc8FR5nIaeGcmFvq6RC4+Prj3E/ZlPmof
	 K2jl+0pjrMYclL6/NNXW4wqS9E01rD3VmvALJbdk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 055A0C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Jan 2026 02:37:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BB774380AA42
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Jan 2026 02:33:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19-rc4 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 05 Jan 2026 02:33:49 +0000
Message-Id: <20260105023349.release-6.19-rc4@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19-rc4
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.19-rc4.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.19-rc4/v6.18

Linux kernel version 6.19-rc4 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.19-rc4.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.19-rc4/v6.18

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.19-rc4/v6.19-rc3

