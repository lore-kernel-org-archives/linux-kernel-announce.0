Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208B919E998
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726134656; cv=none; b=Fug73OJcAf8F1RtBgFdGrBiiNRVGzjb/jmKzU/AUZjJz7n4iYA3v4fOv+3HYGONtpRK0WNln0aRUZLHlyMizIFvVthtUk13F+U4zJDfnVOYhd6NAdzpJXPLne0XjG7NWzWXbbQi6Xk/zCF5U0QIpQaEKsSspMJ0+NMHreDTlGiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726134656; c=relaxed/simple;
	bh=waTyqU4xlECP7nO9Z5XbmlCypSeEInPAv6+Hb0zshYg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=NEenhOhxZj1vuRgNeI1on/ZHEA1ylBYpQl16i7gnc2UMPPTC1ch1SbuFMUMRsOX/cqDSjw3e2NI17drrUtPUl85IfbUCcDH+aaVxtgrDFRaH+ZttN34rfAaf6rEROCwUYa1dgTXit0AtOfk6mhiZEOh8AyyX9QW9fN9BTo4kmpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1726134656;
	bh=waTyqU4xlECP7nO9Z5XbmlCypSeEInPAv6+Hb0zshYg=;
	h=Subject:From:To:Date:From;
	b=E4jFclSW2u/BBz3CjCVDik5GGyg8rIf2GTYhnpr+JVnhowQ6YxXV6jX6fGTjC28Un
	 dc6pE+RWkP/heyZTzASKydLA3RnI02IzLEVbjM/ZZJoMnXeMAYRdKFlzkNkBlbAxHS
	 JhyJqkyAp0wkzDExEt1znl5ktRy40e90W+3gmNfk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2B59C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:55 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 33B973806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:58 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.110 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 12 Sep 2024 09:50:56 +0000
Message-Id: <20240912095056.release-6.1.110@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.110
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.110.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.110.xz

Linux kernel version 6.1.110 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.110.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.110.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.110.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.110/v6.1.109

