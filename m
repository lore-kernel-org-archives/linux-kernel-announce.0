Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D027191F8F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726134653; cv=none; b=J+i1Ut67SF/1diNAqYg+pvJsg/QKEyzlCelA7C9Y4nsyX1TAAJrbIQt1epPMGCYlOTPpJvd1bAOpmjJQIkZ8RFXdkUeUSwcW+i1Ad8k1g6yZVbaUnaf4PK8/Ix20uK6xM0Q9g/jw8v3pJikv9rVLZIgWvw1ayTZkzuGCDtTSHHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726134653; c=relaxed/simple;
	bh=cKex5nnNsBvoO2DCay7QFEQStoL/AM66yzpKrbTw9uA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=cNX1GuN9fipa6nAJQHW7rZOh3F2iUNV/+UJjdokLsxgf7n/pTR8SZtLo4DuSE978v9CaouQ+GAMiyBwAZDLmvUJdk9YPPmD3PMcrANy89wERzPobwFuRSOdNLrMbQEClUE2x324joKFGhIRwSPvSx6irhPGLUWdjeyOG7DPCbQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1726134653;
	bh=cKex5nnNsBvoO2DCay7QFEQStoL/AM66yzpKrbTw9uA=;
	h=Subject:From:To:Date:From;
	b=fHWNJUaQ6EFWjRe3XN4Ri8FlFhzZNnMuozt3I5OlZ/eGQKWBAgxR6BReZS1l6Oull
	 6JKemY70F0lMwq7OZ1c+to80Oke/3tG9CVt8CghBxjNWFByoc7JPivbRHWagVSNcd7
	 RTL/B/nnsMCApKsd+dkzJwpqIBZluOCPWD/HZv74=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B6E1C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:53 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 75B3E3806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:50:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.10.10 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 12 Sep 2024 09:50:54 +0000
Message-Id: <20240912095054.release-6.10.10@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.10.10
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.10.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.10.xz

Linux kernel version 6.10.10 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.10.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.10.10.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.10.10.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.10.10/v6.10.9

