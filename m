Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610E619A2B0
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734204331; cv=none; b=H6M2+ap+x2aaeSa9Uu1KO17ALidvBPe/iYGoFa91HpDm9FI1mVk+TfGNqgQ7QhmN3mNO3fNi4UNm6lkSk7SSVJ+4DF0uqM3TA6ZbCIn0vJVmHpWyk+m9SRRUaGU8VzET/zTcSlY+MPVNctww88t+zwowZSqzN/WVuu4Bq9Cd5lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734204331; c=relaxed/simple;
	bh=ylFUjddBXz8gBD/a4uVMjANoEuEVwWa0AKowp4ii71E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=IMb7DMi7WNfc4407lUOQqWd4bi16NElS2lypmVPAcFRenqVJioWAmV3k2sCjxyzGENa8BHG820mujFH6pBZHTRMmdc+g7riiNf0UEovHDGjkfuE0RDefWoJSNJfWSOBNmtGOj9x7E6VOhrkgvrnOnM9qhpY9z3spPKlazo2E6gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734204331;
	bh=ylFUjddBXz8gBD/a4uVMjANoEuEVwWa0AKowp4ii71E=;
	h=Subject:From:To:Date:From;
	b=H1sih/AvppM1DaJWfBA+GlQiSA7SckRGi2fNzYw2sF/nGmKr4RDhUeK2Q3aSBYPxa
	 p5Lk/FcJ8NhqQNILS2fb5eUr6kCoVVk947fpME4CzUWhc4qQjdNSxFz8FmlTHYLM83
	 hCCebkvG+yF80urBRdeKra5JV8uMtHWJH2vweg8M=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEB07C4CED1
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:25:30 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B4736380A959
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:25:48 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.66 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 14 Dec 2024 19:25:47 +0000
Message-Id: <20241214192547.release-6.6.66@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.66
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.66.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.66.xz

Linux kernel version 6.6.66 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.66.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.66.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.66.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.66/v6.6.65

