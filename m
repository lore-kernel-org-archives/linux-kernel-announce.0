Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D8521EB9EF
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Mar 2025 20:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740947318; cv=none; b=Nqzs0UZVlQNSNmEv0af9a3o1eYXiciYqCsph6XjWlB324HDxB8tu7Tjj2nbZuMlD9B/0OWaIqO8A6mEjUVNFSZvbjqiVrXKptAId4tWhogK12LVoAV8Xvln5wLjtGWd9Kte73QNxG3RHzqAzi2Q47tdqdErHWoP2kIPDluhircg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740947318; c=relaxed/simple;
	bh=yxFeGKNds6BK9iWv+OHoHKjFDinu0Zx5oSfqayelY/g=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=f6ljF386IsRiqPNZshinpuB+Zd/yA9zSxlhgpFdJqc7AGNoO9hy1m1HKlptRaBWGSoDZroZNGWe4IBd8PZx5/0/KxGhJvPZIzCBkxIRRJsBS1wO3XO2hRYUv36mZ2izIQ+u061CSodnatVGxa3DWGq9nc7rhzgNzuin1/6sLqio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1740947318;
	bh=yxFeGKNds6BK9iWv+OHoHKjFDinu0Zx5oSfqayelY/g=;
	h=Subject:From:To:Date:From;
	b=ZJlMIPR42+YiOH4M7FLpBeImK8qXd8BZ5O0xADVTTkadJFWS9EQaX67rVRJ5D3tce
	 qOjDBiicr49WySOBBcxpiDnJP6GkhW+WarCU2c8AWQNJNZx80kcG0ZN0tnE306+I9F
	 B9cJjEUB6psSoSDcy5XI3euwXqCr9/7u+q4hJEjw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31215C4CED6
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Mar 2025 20:28:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B3724380CFE8
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Mar 2025 20:29:11 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.14-rc5 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 02 Mar 2025 20:29:10 +0000
Message-Id: <20250302202910.release-6.14-rc5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.14-rc5
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.14-rc5.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.14-rc5/v6.13

Linux kernel version 6.14-rc5 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.14-rc5.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.14-rc5/v6.13

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.14-rc5/v6.14-rc4

