Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7591D31D368
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757437547; cv=none; b=VjTBinL37/aKCzd4l6T06s+KC7sgpqNPkJIUK/VApxADlkXEi7LMVMbQl/Ok7j5ZU23AADfIcZeDNzbow9PMAvcGcIoIqSxFjVqS+0eHnYwW9gH6aS54I8OM6dQGSFKNLieISFqMHxvi4Gbu8i/OnXZmjTLO7z4qbnuapHsEmGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757437547; c=relaxed/simple;
	bh=0roKaRulPX+a81k4DvFyjLxg8f87XLK4nDN6dpbtfP8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Y13p3qq8QOE1xMK7UglHtWHSkK2Lr3LY4kth9FeRkFh3+YwsiezByqQyN4MnIcHomJNlcIJTruqsEewzN0hZO7wbcI52Q2UwBzOdKC+8ce+PNK9aJzNRh20JDpmi6SPMJzH2EjBvSacQDT9lKCJHqWDpgeZW4GV8dtTw25aP8dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1757437547;
	bh=0roKaRulPX+a81k4DvFyjLxg8f87XLK4nDN6dpbtfP8=;
	h=Subject:From:To:Date:From;
	b=edWXDv4Y6ccDqoDQoPBKTrAJyXQF7ptEw++PEakMMEsEt8dlSA7DQwsyvy6nV1uvH
	 zEjp8qL/4jSZeBGRQ3fo/EBc/hNGOTZEFsXuiiWe68XdmgDPtrz7zsEJ80l0cOxouQ
	 tQkfoXED5ffwfJCI4AXiObLoiNY8tcujL85ferdE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 141FAC4CEF4
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:05:47 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 74D86383BF69
	for <linux-kernel-announce@vger.kernel.org>; Tue,  9 Sep 2025 17:05:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.151 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Tue, 09 Sep 2025 17:05:50 +0000
Message-Id: <20250909170550.release-6.1.151@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.151
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.151.tar.xz

Linux kernel version 6.1.151 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.151.tar.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.151.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.151/v6.1.150

