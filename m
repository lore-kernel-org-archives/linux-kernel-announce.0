Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2927038DDB
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 06:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725776144; cv=none; b=hqVGPTYQYmwrE/6dH6yHJS/IIhyTz2vYsyD/Fc3e84CnOyHnTHJluY9B9dxCxofzCysC+bQvKYIySwdd/ID5ICZA9WJSGQwmOomS7Fa8C4pWGMNkLLTZj3uweKJvT7HrX0y8hP1hc33k8i65zA8Wzi9ja1VD3/5shvF4IYX2ywE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725776144; c=relaxed/simple;
	bh=uPUFtatDwHox/X76h4TVTCtNOISgzcOawpTzrM8FIJ8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=RCyds823dBVoKnGsdH0y/HhLW3IFP93DUckaNOJetLB89Cqbila0dIQ48tSjw2s7uuj7i4VpNWF6+fBsM7NHUwgEoBXcEahBcrmmlkERhIe0m8RoPvQt/2sAx8Vy3hsK69q9TqIYX4fKzsPc+ZUpGY7U44qNwvmSqZN2yUP8Wiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1725776144;
	bh=uPUFtatDwHox/X76h4TVTCtNOISgzcOawpTzrM8FIJ8=;
	h=Subject:From:To:Date:From;
	b=b7bIQHe2xOO/sBuBc054EC6lb/nlbSIT0ybhbG5iB16jAHi2JIgm0rN/VQjrnN119
	 nEuotsdMd8obBL6vKHjcD4vzV0HMhHxrdZT+tMd1ASUib63qXRee9n+haUEpY3FjO9
	 fTVwb+Hm8LiRJBAnz3XptEz0MrZ3MJcR/Y2TENr4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4671C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 06:15:43 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B24EA3805D82
	for <linux-kernel-announce@vger.kernel.org>; Sun,  8 Sep 2024 06:15:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 08 Sep 2024 06:15:44 +0000
Message-Id: <20240908061544.release-6.10.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.9.xz

Linux kernel version 6.10.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.9/v6.10.8

