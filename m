Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A196B4C7E
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 23:16:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723418205; cv=none; b=OHnNffbuS91sWLufOh4ciWpE5hB7wNB33dJOGKOAZcgkzWTzCwUOEwD4WYCuHWk0/BV8a4Tlw5e3ZmIAe3JGgrUhvl1LLDbhRqeRXHpjuIeWMosj3HZ0QsziW40F+v3dXQfR+mX4K2/JUhyAiuJhEYDItTU0Yw5DP4A2AgYKmaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723418205; c=relaxed/simple;
	bh=5ja7oO45eiGHfps+ugGMcuSgDXg5D1iRy3FINfa9EkE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=uhZE0qZcznDBy4pEq0hCmg+n35pRccdzQ+MqqSAttSDLHKOvAZ512mudlYqyWpNpKYs7mV+1bpH+0PeXRC9fuN1BnrkZvl9+40e6BXeyz2OtlaivSTg5F0In6c0XgYZtaQHncPXhn7RLxFGEELjvaA9uUkkNN4tu4qWtRzWGtiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1723418205;
	bh=5ja7oO45eiGHfps+ugGMcuSgDXg5D1iRy3FINfa9EkE=;
	h=Subject:From:To:Date:From;
	b=chOkbd6hwA2Nve1FsEmmPB7zPzR6GRR/y/SrgoH8el0XwKx5O6JKaQHloM4UK4bxN
	 DifnVcpzFSN47WUV73U7QHEky5crvVjJt+Ksk755mMnG6/ilZ6Uf25vkwXoO+7NdD3
	 f+uUsHE2QkT3+WKaOpvgIlzhHE0AB7LY4nNmJ7WI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4085DC32786
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 23:16:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3CF753822D16
	for <linux-kernel-announce@vger.kernel.org>; Sun, 11 Aug 2024 23:16:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 11 Aug 2024 23:16:43 +0000
Message-Id: <20240811231643.release-6.11-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.11-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.11-rc3/v6.10

Linux kernel version 6.11-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.11-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.11-rc3/v6.10

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.11-rc3/v6.11-rc2

