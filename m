Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7B6713D2A2
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724041249; cv=none; b=dwQnuEWiWAPQGzvbU6vCyH6Y02IqapZBUBlf04wPKKamzc3x/RByTJRRl0W66XqzeZEBcfWqtK2LNqCuGX8k+ko4E+tV1sA3pB3OeUO0bd8B2Db7Fv7NzoorU6vyt+9HUI3CkZ6GziWnPBK8g/SClxrSkRSz2owfEYuZWVXPJQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724041249; c=relaxed/simple;
	bh=67FbF4MqGvT78AUPaDPW5EsqjCZW7mZZEnSAeQpiWiU=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Bj8dwTttRGQeEZEX+03E/aU3rc4Hf2fEEK3HbV0LomA4L2PhTmHgrby4wKpRj/bKSN2mD8arG9tFRcx5oETa4emmVEg0DI+3TL69teCi7M8YbiA0FGeAy+KU87fjq5kwdO75ZgzAAcsWurFhb4i39+Wj4Yeadiitc6QAQrAu3cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1724041249;
	bh=67FbF4MqGvT78AUPaDPW5EsqjCZW7mZZEnSAeQpiWiU=;
	h=Subject:From:To:Date:From;
	b=lYApxVxCoeHPboA8Y3alnM7HrkHPfsPhDZbpBRnYMdnlUFnv8BgES5XC8cZ/pioYN
	 kCa+7S69gK4JM3NU6MyrjCW46STL1nYkmHKiKSnRbTgvLV/KUVj8Y7BiTmM+ivNn9d
	 skkYLM1NEUNARxTDs2fI1xjC+ga/PL4VZFJmHaLE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8732AC32782
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:49 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 339993823358
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Aug 2024 04:20:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.224 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Aug 2024 04:20:48 +0000
Message-Id: <20240819042048.release-5.10.224@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.224
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.224.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.224.xz

Linux kernel version 5.10.224 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.224.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.224.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.224.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.224/v5.10.223

