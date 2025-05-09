Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B812741DD
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746778497; cv=none; b=MPCDgU5pLTlE+1Iiu+W2fyuGZqlfBDiowmSFSl0A3A3AFWdlUe3HucD4nWhc0ADfLsp6vEqUjJsypsaIeV/M8o+jhRFgnUQmtiID6z5ty/XXoCcwciPL+jS85m1i7zYnPa2JIZWqn8wPb7/hEQo/92UnWn0t1bxttcr1W5hV6zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746778497; c=relaxed/simple;
	bh=FRIhNE9yow8Mgs9hOAZf1FanV+ppXTXfkG041XGszN0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=U5M+vydspqQuTAcxlcwvveiGRxt1v7YrrskOkLuyX0gabD1Kdr2sEZ4tZafdO3WSIdTqpww/SRYhKDzZZe1Vix/o3XhkitcA+O0D19WJiO8Jid8HivaRqZKd4MCkJp+mmwrmQeQC34DyKZbELYH8aLhlBKJtyR9jPVglypPzvmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1746778497;
	bh=FRIhNE9yow8Mgs9hOAZf1FanV+ppXTXfkG041XGszN0=;
	h=Subject:From:To:Date:From;
	b=TS2ZOPRRBiV4B4eQbVu3MvgNL38CL7Mjgcjsb09kGKjrkRUWimR7wss37iJxjRWpG
	 4Jif+XjyiqQUg+UaIrnU05Ha6J1q1wRq+juqHocotwSb4ulNe0pVTBy2YkNWSz4QWJ
	 0/xIM0kEZSUqYg3tXEFZl0jFs3PU3yjBUQG8nifc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CFF9C4CEE9
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:14:56 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 370C1380AA7D
	for <linux-kernel-announce@vger.kernel.org>; Fri,  9 May 2025 08:15:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.28 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 09 May 2025 08:15:34 +0000
Message-Id: <20250509081534.release-6.12.28@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.28
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.28.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.28.xz

Linux kernel version 6.12.28 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.28.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.28.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.28.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.28/v6.12.27

